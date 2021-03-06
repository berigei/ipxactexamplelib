//-----------------------------------------------------------------------------
// File          : wb_slave.v
// Creation date : 30.03.2017
// Creation time : 12:18:42
// Description   : Template component for wishbone slave. Address space is assumed to be contiguous.
// Created by    : TermosPullo
// Tool : Kactus2 3.4.6 32-bit
// Plugin : Verilog generator 2.0d
// This file was generated based on IP-XACT component tut.fi:ip.hw:wb_slave_template:1.0
// whose XML file is D:/kactus2Repos/ipxactexamplelib/tut.fi/ip.hw/wb_slave_template/1.0/wb_slave_template.1.0.xml
//-----------------------------------------------------------------------------

module wb_slave #(
    parameter                              ADDR_WIDTH       = 16,    // The width of the address.
    parameter                              DATA_WIDTH       = 32,    // The width of the both transferred and inputted data.
    parameter                              DATA_COUNT       = 8,    // How many values there are in the register array.
    parameter                              BASE_ADDRESS     = 'h0F00    // The first referred address of the master.
) (
    // Interface: wb_slave
    // The address of the data.
    input          [ADDR_WIDTH-1:0]     adr_i,    // The address of the data.
    input                               cyc_i,    // Asserted by master for transfer.
    input          [DATA_WIDTH-1:0]     dat_i,    // Data from master to slave.
    input                               stb_i,    // Asserted, when this specific slave is selected.
    input                               we_i,    // Write = 1, Read = 0.
    output reg                          ack_o,    // Slave asserts acknowledge.
    output reg     [DATA_WIDTH-1:0]     dat_o,    // Data from slave to master.
    output reg                          err_o,    // Indicates abnormal cycle termination.

    // Interface: wb_system
    // The mandatory clock, as this is synchronous logic.
    input                               clk_i,    // The mandatory clock, as this is synchronous logic.
    input                               rst_i    // The mandatory reset, as this is synchronous logic.
);

// WARNING: EVERYTHING ON AND ABOVE THIS LINE MAY BE OVERWRITTEN BY KACTUS2!!!

    localparam AUB = 8;
    localparam AU_IN_DATA = DATA_WIDTH/AUB;
    localparam MEMORY_SIZE = DATA_COUNT*4;
    reg [AUB-1:0] memory [MEMORY_SIZE-1:0];
    
    // Used to index AUBs to data io.
    integer index;

    // The state.
    reg [0:0] state;
    
    // The available states.
    parameter [0:0]
        S_WAIT      = 1'd0, // Waiting for cyc_i & stb_i
        S_DEASSERT  = 1'd1; // Deassert acknowledgement.

    always @(posedge clk_i or posedge rst_i) begin
        if(rst_i == 1'b1) begin
            ack_o <= 0; // Obviously, there is nothing to acknowledge by default.
            dat_o <= 0; // No output by default.
            err_o <= 0; // No error by default.
            state <= S_WAIT; // Wait signals from the masters at reset.
        end
        else begin
            if (state == S_WAIT) begin
                // Wait signal from the master.
                if ( cyc_i == 1 && stb_i == 1 ) begin
                    // Master ok, check the address.
                    if (adr_i < BASE_ADDRESS + MEMORY_SIZE && adr_i >= BASE_ADDRESS) begin
                        // The specified address in accessible -> proceed.
                        ack_o <= 1;

                        if ( we_i == 1 ) begin
                            // Writing: Pick every byte from the input and place them to correct addresses.
                            for (index = 0; index < AU_IN_DATA; index = index + 1) begin
                                memory[adr_i - BASE_ADDRESS + index] <= dat_i[(index*AUB)+:AUB];
                            end
                        end
                        else begin
                            // Reading: Pick every byte from correct addresses and place them to the output.
                            for (index = 0; index < AU_IN_DATA; index = index + 1) begin
                                dat_o[(index*AUB)+:AUB] <= memory[adr_i - BASE_ADDRESS + index];
                            end
                        end
                    end
                    else begin
                        // The specified address out-of-scope -> error!
                        err_o <= 1;
                    end
                
                    // Next thing is to deassert.
                    state <= S_DEASSERT;
                end
            end
            else if (state == S_DEASSERT) begin
                // Deassert acknowlegement, get ready to receive next one.
                ack_o <= 0;
                err_o <= 0;
                state <= S_WAIT;
            end
            else
                $display("ERROR: Unkown state: %d", state);
        end
    end
endmodule

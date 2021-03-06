//-----------------------------------------------------------------------------
// File          : wb_cpu.setup.v
// Creation date : 15.05.2017
// Creation time : 14:09:50
// Description   : 
// Created by    : TermosPullo
// Tool : Kactus2 3.4.104 32-bit
// Plugin : Verilog generator 2.0e
// This file was generated based on IP-XACT component tut.fi:communication.bridge.test:wb_cpu.setup:1.0
// whose XML file is D:/kactus2Repos/ipxactexamplelib/tut.fi/communication.bridge.test/wb_cpu.setup/1.0/wb_cpu.setup.1.0.xml
//-----------------------------------------------------------------------------

module wb_cpu_setup();

    // wb_cpu_0_wb_master_to_wb_cpu.bench_0_wb_slave wires:
    wire        wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveack;
    wire [15:0] wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveadr;
    wire        wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavecyc;
    wire [31:0] wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavedat_ms;
    wire [31:0] wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavedat_sm;
    wire        wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveerr;
    wire        wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavestb;
    wire        wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavewe;
    // wb_cpu_0_wb_system_to_clock_generator_0_wb_system wires:
    wire        wb_cpu_0_wb_system_to_clock_generator_0_wb_systemclk;
    wire        wb_cpu_0_wb_system_to_clock_generator_0_wb_systemrst;
    // wb_cpu_0_contoller_to_wb_cpu.bench_0_memory_interface wires:
    wire [15:0] wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfaceaddress;
    wire [31:0] wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacedata_ms;
    wire [31:0] wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacedata_sm;
    wire        wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacemaster_rdy;
    wire        wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfaceslave_rdy;
    wire        wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacewe;

    // clock_generator_0 port wires:
    wire        clock_generator_0_clk_o;
    wire        clock_generator_0_rst_o;
    // wb_cpu.bench_0 port wires:
    wire        wb_cpu_bench_0_ack_o;
    wire [15:0] wb_cpu_bench_0_adr_i;
    wire        wb_cpu_bench_0_clk_i;
    wire        wb_cpu_bench_0_cyc_i;
    wire [31:0] wb_cpu_bench_0_dat_i;
    wire [31:0] wb_cpu_bench_0_dat_o;
    wire        wb_cpu_bench_0_err_o;
    wire [15:0] wb_cpu_bench_0_mem_address_o;
    wire [31:0] wb_cpu_bench_0_mem_data_i;
    wire [31:0] wb_cpu_bench_0_mem_data_o;
    wire        wb_cpu_bench_0_mem_master_rdy;
    wire        wb_cpu_bench_0_mem_slave_rdy;
    wire        wb_cpu_bench_0_mem_we_o;
    wire        wb_cpu_bench_0_rst_i;
    wire        wb_cpu_bench_0_stb_i;
    wire        wb_cpu_bench_0_we_i;
    // wb_cpu_0 port wires:
    wire        wb_cpu_0_ack_i;
    wire [15:0] wb_cpu_0_adr_o;
    wire        wb_cpu_0_clk_i;
    wire        wb_cpu_0_cyc_o;
    wire [31:0] wb_cpu_0_dat_i;
    wire [31:0] wb_cpu_0_dat_o;
    wire        wb_cpu_0_err_i;
    wire [15:0] wb_cpu_0_mem_address_in;
    wire [31:0] wb_cpu_0_mem_data_in;
    wire [31:0] wb_cpu_0_mem_data_out;
    wire        wb_cpu_0_mem_master_rdy;
    wire        wb_cpu_0_mem_slave_rdy;
    wire        wb_cpu_0_mem_we_in;
    wire        wb_cpu_0_rst_i;
    wire        wb_cpu_0_stb_o;
    wire        wb_cpu_0_we_o;

    // clock_generator_0 assignments:
    assign wb_cpu_0_wb_system_to_clock_generator_0_wb_systemclk = clock_generator_0_clk_o;
    assign wb_cpu_0_wb_system_to_clock_generator_0_wb_systemrst = clock_generator_0_rst_o;
    // wb_cpu.bench_0 assignments:
    assign wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveack = wb_cpu_bench_0_ack_o;
    assign wb_cpu_bench_0_adr_i[15:0] = wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveadr[15:0];
    assign wb_cpu_bench_0_clk_i = wb_cpu_0_wb_system_to_clock_generator_0_wb_systemclk;
    assign wb_cpu_bench_0_cyc_i = wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavecyc;
    assign wb_cpu_bench_0_dat_i[31:0] = wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavedat_ms[31:0];
    assign wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavedat_sm[31:0] = wb_cpu_bench_0_dat_o[31:0];
    assign wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveerr = wb_cpu_bench_0_err_o;
    assign wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfaceaddress[15:0] = wb_cpu_bench_0_mem_address_o[15:0];
    assign wb_cpu_bench_0_mem_data_i[31:0] = wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacedata_sm[31:0];
    assign wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacedata_ms[31:0] = wb_cpu_bench_0_mem_data_o[31:0];
    assign wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacemaster_rdy = wb_cpu_bench_0_mem_master_rdy;
    assign wb_cpu_bench_0_mem_slave_rdy = wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfaceslave_rdy;
    assign wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacewe = wb_cpu_bench_0_mem_we_o;
    assign wb_cpu_bench_0_rst_i = wb_cpu_0_wb_system_to_clock_generator_0_wb_systemrst;
    assign wb_cpu_bench_0_stb_i = wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavestb;
    assign wb_cpu_bench_0_we_i = wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavewe;
    // wb_cpu_0 assignments:
    assign wb_cpu_0_ack_i = wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveack;
    assign wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveadr[15:0] = wb_cpu_0_adr_o[15:0];
    assign wb_cpu_0_clk_i = wb_cpu_0_wb_system_to_clock_generator_0_wb_systemclk;
    assign wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavecyc = wb_cpu_0_cyc_o;
    assign wb_cpu_0_dat_i[31:0] = wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavedat_sm[31:0];
    assign wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavedat_ms[31:0] = wb_cpu_0_dat_o[31:0];
    assign wb_cpu_0_err_i = wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slaveerr;
    assign wb_cpu_0_mem_address_in[15:0] = wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfaceaddress[15:0];
    assign wb_cpu_0_mem_data_in[31:0] = wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacedata_ms[31:0];
    assign wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacedata_sm[31:0] = wb_cpu_0_mem_data_out[31:0];
    assign wb_cpu_0_mem_master_rdy = wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacemaster_rdy;
    assign wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfaceslave_rdy = wb_cpu_0_mem_slave_rdy;
    assign wb_cpu_0_mem_we_in = wb_cpu_0_contoller_to_wb_cpu_bench_0_memory_interfacewe;
    assign wb_cpu_0_rst_i = wb_cpu_0_wb_system_to_clock_generator_0_wb_systemrst;
    assign wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavestb = wb_cpu_0_stb_o;
    assign wb_cpu_0_wb_master_to_wb_cpu_bench_0_wb_slavewe = wb_cpu_0_we_o;

    // IP-XACT VLNV: tut.fi:other.test:clock_generator:1.1
    clock_generator clock_generator_0(
        // Interface: wb_system
        .clk_o               (clock_generator_0_clk_o),
        .rst_o               (clock_generator_0_rst_o));

    // IP-XACT VLNV: tut.fi:communication.bridge.test:wb_cpu.bench:1.0
    wb_slave_mem_master #(
        .ADDR_WIDTH          (16),
        .DATA_WIDTH          (32),
        .DATA_COUNT          (8),
        .BASE_ADDRESS        (3840))
    wb_cpu_bench_0(
        // Interface: memory_interface
        .mem_data_i          (wb_cpu_bench_0_mem_data_i),
        .mem_slave_rdy       (wb_cpu_bench_0_mem_slave_rdy),
        .mem_address_o       (wb_cpu_bench_0_mem_address_o),
        .mem_data_o          (wb_cpu_bench_0_mem_data_o),
        .mem_master_rdy      (wb_cpu_bench_0_mem_master_rdy),
        .mem_we_o            (wb_cpu_bench_0_mem_we_o),
        // Interface: wb_slave
        .adr_i               (wb_cpu_bench_0_adr_i),
        .cyc_i               (wb_cpu_bench_0_cyc_i),
        .dat_i               (wb_cpu_bench_0_dat_i),
        .stb_i               (wb_cpu_bench_0_stb_i),
        .we_i                (wb_cpu_bench_0_we_i),
        .ack_o               (wb_cpu_bench_0_ack_o),
        .dat_o               (wb_cpu_bench_0_dat_o),
        .err_o               (wb_cpu_bench_0_err_o),
        // Interface: wb_system
        .clk_i               (wb_cpu_bench_0_clk_i),
        .rst_i               (wb_cpu_bench_0_rst_i));

    // IP-XACT VLNV: tut.fi:communication.bridge:wb_cpu:1.0
    wb_master #(
        .ADDR_WIDTH          (16),
        .DATA_WIDTH          (32),
        .BASE_ADDRESS        (3840),
        .RANGE               (512))
    wb_cpu_0(
        // Interface: contoller
        .mem_address_in      (wb_cpu_0_mem_address_in),
        .mem_data_in         (wb_cpu_0_mem_data_in),
        .mem_master_rdy      (wb_cpu_0_mem_master_rdy),
        .mem_we_in           (wb_cpu_0_mem_we_in),
        .mem_data_out        (wb_cpu_0_mem_data_out),
        .mem_slave_rdy       (wb_cpu_0_mem_slave_rdy),
        // Interface: wb_master
        .ack_i               (wb_cpu_0_ack_i),
        .dat_i               (wb_cpu_0_dat_i),
        .err_i               (wb_cpu_0_err_i),
        .adr_o               (wb_cpu_0_adr_o),
        .cyc_o               (wb_cpu_0_cyc_o),
        .dat_o               (wb_cpu_0_dat_o),
        .stb_o               (wb_cpu_0_stb_o),
        .we_o                (wb_cpu_0_we_o),
        // Interface: wb_system
        .clk_i               (wb_cpu_0_clk_i),
        .rst_i               (wb_cpu_0_rst_i));


endmodule

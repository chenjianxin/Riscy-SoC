module sp_ram (
  input [5:0] addr,
  input [7:0] data,
  input we,clk,
  output [7:0] y
);
  
  reg [7:0] ram[63:0];
  reg [5:0] addr_reg;
  always_ff @(posedge clk)
  begin  
    if (we)
      ram[addr] <= data;
      addr_reg <= addr;
  end
  
  assign y = ram[addr_reg];
endmodule   
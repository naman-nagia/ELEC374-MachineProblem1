module logicalAND (
    input wire [31:0] A, 
    input wire [31:0] B, 
    output wire [31:0] result
);
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : bitwise_and // label is optional only here for debugging
            assign result[i] = A[i] & B[i];
        end
    endgenerate
endmodule
module alu (
    input  wire [7:0] A,
    input  wire [7:0] B,
    input  wire [2:0] opcode,
    output reg  [7:0] result,
    output reg        carry,
    output reg        zero
);

always @(*) begin

    result = 8'b0;
    carry  = 1'b0;

    case (opcode)

        3'b000: begin
            // Addition
            {carry, result} = A + B;
        end

        3'b001: begin
            // Subtraction
            result = A - B;
            carry = (A < B);
        end

        3'b010: begin
            // AND
            result = A & B;
        end

        3'b011: begin
            // OR
            result = A | B;
        end

        3'b100: begin
            // XOR
            result = A ^ B;
        end

        3'b101: begin
            // NOT A
            result = ~A;
        end

        3'b110: begin
            // Increment A
            {carry, result} = A + 1'b1;
        end

        3'b111: begin
            // Decrement A
            result = A - 1'b1;
            carry = (A == 8'b0);
        end

        default: begin
            result = 8'b0;
            carry = 1'b0;
        end

    endcase

    // Zero flag
    if (result == 8'b0)
        zero = 1'b1;
    else
        zero = 1'b0;

end

endmodule
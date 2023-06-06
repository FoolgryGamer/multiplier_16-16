module AND_OR_NOT(
    input A,
    input B,
    input C,
    input D,
    output Out
);

assign Out = ~((A&B)|(C&D));

endmodule
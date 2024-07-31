
## Register File Write
**$result** needs to be written back to the destination register (rd) in the register file (if the instruction has a destination register)



### how
change m4+rf() arguments
use: rd, rd_valid, result

### res
you can write the results of ADDI and ADD to RF(to the right register)

### Q
事实上，我的生成的DIAGRAM与答案不太一样，但此时的测试是符合要求的
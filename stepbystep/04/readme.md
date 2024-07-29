
## Decode Logic: Instruction Fields
![alt text](image.png)

![alt text](image-1.png)
(how immediate concat)
- 前面表示inst[31]的复制，直到占满31到11位
- 为了保持格式一致，所以写成分开的形式——比如I格式的imm的后面，其实用一个inst[30:20]就可以表示

### result

#### fields(except funct7 & imm)
![alt text](image-2.png)

#### add 'imm' field
![alt text](image-3.png)

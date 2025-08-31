# 4-bit Binary to Gray Code Converter

## 📌 Overview
This project implements a **4-bit Binary to Gray Code Converter** in **Verilog**.  
It demonstrates **code conversion, combinational logic, and truth tables**.  
A testbench is included to verify all input combinations and generate waveforms for **EPWave**.

---

## 📂 Files in this Repository
- `design.sv, testbench.sv` → Verilog module + testbench
- `README.md` → Project documentation  
  

---

## 🧩 Logic Used
The **Gray Code** is generated using the following rules:
- MSB of Gray = MSB of Binary  
- Other bits = XOR of current and previous binary bits  

**Equations**:
gray[3] = binary[3]
gray[2] = binary[3] ^ binary[2]
gray[1] = binary[2] ^ binary[1]
gray[0] = binary[1] ^ binary[0]


---

## 🧪 Truth Table (4-bit)

| Binary | Gray  |
|--------|-------|
| 0000   | 0000  |
| 0001   | 0001  |
| 0010   | 0011  |
| 0011   | 0010  |
| 0100   | 0110  |
| 0101   | 0111  |
| 0110   | 0101  |
| 0111   | 0100  |
| 1000   | 1100  |
| 1001   | 1101  |
| 1010   | 1111  |
| 1011   | 1110  |
| 1100   | 1010  |
| 1101   | 1011  |
| 1110   | 1001  |
| 1111   | 1000  |

---

## ▶️ Simulation (EDA Playground / Icarus Verilog)

1. Copy the code from `binary_to_gray.v` into [EDA Playground](https://www.edaplayground.com/).  
2. Select **Icarus Verilog** as simulator.  
3. Run → View output in console (`Binary -> Gray`).  
4. Open **EPWave** to see the waveform.  

---

## 📊 Example Output
Console output:
Binary -> Gray

0000 -> 0000
0001 -> 0001
0010 -> 0011
0011 -> 0010
...
1111 -> 1000

EPWave waveform shows how **Gray outputs follow Binary inputs**.

---

## 🚀 Future Work
- Add **Gray to Binary Converter**  
- Extend design for **N-bit input** using parameters  

---

## 📝 License
This project is open-source under the **MIT License**.

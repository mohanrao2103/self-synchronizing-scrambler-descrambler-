# self-synchronizing-scrambler-descrambler-
 "Verilog HDL implementation of a self-synchronizing data scrambler and descrambler for high-speed serial communication, improving data integrity and clock recovery."

 
# 🔄 Self-Synchronizing Data Scrambler & Descrambler (Verilog HDL)

## 📌 Project Overview
This project presents the Verilog HDL implementation of a **self-synchronizing data scrambler and descrambler** system designed for high-speed serial communication. It eliminates long sequences of identical bits to reduce **electromagnetic interference (EMI)** and improves **clock/data recovery** using an 8-bit **Linear Feedback Shift Register (LFSR)**.


📍 **Academic Project:**  
B.Tech in Electronics & Communication Engineering (ECE),  
CMR College of Engineering & Technology, Hyderabad


## 🛠️ Tools & Technologies Used
- **HDL Language:** Verilog  
- **Simulation Tools:** Xilinx Vivado / ModelSim (QuestaSim)  
- **Design Methodology:** RTL Design  
- **Target Applications:** Ethernet, USB, PCIe, Satellite Comm, Data Storage


## ✨ Key Features
- ✅ Implemented an **8-bit LFSR-based scrambler** to randomize data and avoid repeated patterns.
- 🔁 Developed a **self-synchronizing descrambler** that automatically realigns without external sync.
- ⚡ Achieved **low latency (1–2 clock cycles)** for accurate and fast data recovery.
- 📉 Minimized hardware usage using simple **XOR logic and shift registers**.
- 🧪 Verified functionality via simulation with **reliable waveform outputs**.



## 📂 Project Directory Structure

```
scrambler-descrambler-verilog/
├── RTL/                   # Verilog source code
│   ├── scrambler.v
│   └── descrambler.v
├── Testbench/             # Simulation files
│   └── tb_top.v
├── Docs/                  # Project report and presentation
│   ├── Project_Report.pdf
│   └── Project_Presentation.pptx
├── Images/                # Diagrams and waveform screenshots
│   ├── block_diagram.png
│   └── simulation_waveform.png
├── README.md              # This file
└── .gitignore
```


## 🚀 How to Simulate (Using ModelSim/Vivado)
1. **Clone the Repository**
```bash
git clone https://github.com/mohanrao2103/scrambler-descrambler-verilog.git
cd scrambler-descrambler-verilog
```

2. **Compile the Verilog Files**
```bash
vlog RTL/*.v Testbench/tb_top.v
```

3. **Start Simulation**
```bash
vsim tb_top
```

4. **View Waveforms**
- Add signals using `add wave *`
- Run the simulation using `run 1000ns`



## 🧠 Key Learning Takeaways
- Practical experience with **Verilog HDL** and simulation tools  
- Strong understanding of **LFSR-based digital encoding**  
- Exposure to **self-synchronizing circuits** and data recovery techniques  
- Gained insight into **low-power, low-latency digital system design**



## 🙌 Acknowledgements
- **Project Guide:** Mrs. K. Anusha  
- **Faculty Mentors:** Dr. P. Raveendrababu, Mr. B. Venkataramanaiah  
- **Institution:** CMR College of Engineering & Technology, Hyderabad  
- **Team Members:**
  - Kosanam Mohan Rao   (22H51A0436)  
  - Bureddy Revathi     (23H55A0406)  
  - Kolipyaka Gangothri (22H51A04G4)  
  - Talari Mouna Sree   (22H51A04J7)  
  - Tanneeru Sandhya    (22H51A04J8)



## 📄 License
This project is licensed under the [MIT License](LICENSE).


## 📸 Screenshots

### 🔧 Block Diagram
![Block Diagram](Images/block_diagram.png)

### 📊 Output Waveform
![Waveform](Images/simulation_waveform.png)


## 🔗 Connect
If you found this project helpful or interesting, feel free to ⭐ star the repo and connect with me on [LinkedIn](https://www.linkedin.com/in/mohan-rao-kosanam-b824a3236/).

# Project 2: Optimizing Parameters for Molecular Dynamics Simulations

This project explores the effects of two critical parameters in molecular dynamics (MD) simulations: the **timestep** and the **temperature damping parameter (Tdamp)** of the Nose-Hoover thermostat. The study is divided into two parts:

1. **Timestep Optimization in NVE Ensemble:**  
   We vary the timestep from 0.1 fs to 100 fs in NVE ensemble simulations at two temperatures (600 K and 1200 K) to analyze energy conservation and temperature stability.

2. **Tdamp Optimization in NVT Ensemble:**  
   Using the optimal timestep determined in the first part, we investigate the impact of Tdamp in NVT ensemble simulations. The simulations are performed for a specific material (in this case, Nickel (Ni)) to assess whether optimal parameters vary by material type.

---

## Analysis

### Part 1: Timestep Optimization
To begin, we modified the input and library files to incorporate data for Nickel (Ni). Simulations were conducted at constant temperatures of 600 K and 1200 K, while the timestep was varied to identify its optimal value. Below are the results of this analysis:

![Figure 1: Energy Components vs. Timestep at 600 K](energy600.png)  
![Figure 2: Energy Components vs. Timestep at 1200 K](energy1200.png)

The plots illustrate the relationship between **Kinetic Energy**, **Potential Energy**, and **Total Energy** as functions of the timestep. Key observations include:
- The optimal timestep was determined to be **0.002 fs**, as this value maintains the system's structural integrity.
- At a timestep of **1.5 fs**, energy components exhibit significant instability, particularly at 1200 K, where both Potential and Total Energy begin to drift upwards.
- A timestep of 1.5 fs is too large, leading to numerical instability, especially at higher temperatures. This is evidenced by the upward trend in Total Energy, indicating energy conservation issues due to integration errors.

### Part 2: Temperature Stability and Standard Deviation
The following plots visualize the standard deviation of temperature for various timesteps:

![Figure 3: Temperature Stability at 600 K](temp600.png)  
![Figure 4: Temperature Stability at 1200 K](temp1200.png)

Key findings include:
- Smaller timesteps (e.g., 0.1 fs and 0.5 fs) result in significant temperature fluctuations, indicating poor energy conservation and instability.
- As the timestep increases to **2 fs, 3 fs, and 4 fs**, temperature variations become smoother and more stable, suggesting improved energy conservation and equilibration.
- However, excessively large timesteps may introduce integration errors. Thus, the optimal timestep range for maintaining stability and accuracy lies between **2 fs and 3 fs**.

---

## Conclusion
This project highlights the importance of selecting appropriate timesteps and Tdamp parameters in MD simulations. For Nickel (Ni), the optimal timestep was found to be **0.002 fs** for maintaining structural stability, while a range of **2 fs to 3 fs** ensures temperature stability and energy conservation. These findings underscore the need for careful parameter selection to achieve reliable and accurate simulation results.

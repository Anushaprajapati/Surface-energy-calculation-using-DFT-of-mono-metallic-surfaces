Project Title: Surface Energy Calculation for Monometallic 

Description: This repository contains code scripts aimed at generating monometallic surfaces using computational tools. The primary objective is to calculate surface energies for various metal surfaces and analyze their stability. These calculations are crucial for understanding material properties at the atomic scale and predicting the most stable configurations of metal surfaces.

Installation
1. Python version 'Python 3.11.7'
 Packages ASE and ACAT
2. Softwares
a. CP2K - to perform DFT calculations.
b. VMD - to visualize, manipulate and save metallic structures in desired format.
c. ASE GUI - to visualize, manipulate and save metallic structures in desired format.

USAGE
Steps to find surface energies of desired metallic surfaces
1. Generating monometallic structures
This repository has two 'ipynb' files, which contains the codes to generate monometallic surfaces and bulk structures. 
1.01. The structures automatically opens in ASE GUI in '.pdb' format
1.02. In the command prompt, make a new directory for each generated surface and bulk structures. 
1.03. Open the generated structure(.pdb format), flip Y and Z columns(because the default calculation in CP2K is XZ) and  note the cell coordinates (a, b, c, alpha, beta, gamma).
1.04. Load the structure in VMD software and save the coordinates in '.xyz' format. Can also be saved using 'obabel -ipdb Nifcc100.pdb -oxyz -O Nifcc100.xyz'. 
1.05. Now, the directory for each structures should have '.xyz' file, cp2k_input.inp file and mpi_slurm_cp2k.sh file. 
1.06. The repository contains both cp2k_input.inp file and mpi_slurm_cp2k.sh file, open the cp2_input.inp file and insert cell coordinates notted and let the poisson solver be wavelet. 
1.07. Once these 3 files are modified, in the command prompt, use 'nohup ./mpi_slurm_cp2k.sh &' to run cp2k.
1.08. The cp2k calculation can be tracked using 'top' command, and 'jobs' command can be used to check it's status(running, done, exit, etc).
1.09. After the calculation in completed, these list of files gets saved nohup.out, cp2k.out, aufcc110-RESTART.wfn  aufcc110-RESTART.wfn.bak-1.
1.10. The cp2.out file contains the energy value.
1.11. Calculate the energy value for all surfaces and bulk and the surface energy value can be calculated using the formula, Surface energy =
((Energy of surface) −( Number of atoms in surface×Energy of bulk×Number of atoms bulk))/(2 × Surface area).
1.12. Number of atoms in the bulk and surface can be noted from the pdb file, and the surface area is the product of a and c coordinates of the structure. 
 






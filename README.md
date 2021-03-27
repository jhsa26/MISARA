# MISARA
MISARA is an open-source Matlab Interface for the Seismo-acoustic ARary Analysis, designed to support the visualization, characterization, detection and localization of different volcano seismo-acoustic signals. This software has been originally created in order to help the users with the application of array methods (for more details, see Rost and Thomas, 2000) to different volcanic signals. In fact, it offers valuable tools that support the source localization those emergent and or sustained signals such as Long Period (LP) events or Very Long Period (VLP) events and volcanic tremor. In addition, it is intended for academic/research applications, for temporary surveys and during routine analysis at volcanological observatories. However, the software is very adaptive and it can be also modified/used for different purposes. 
MISARA presents an intuitive and modular structure in order to facilitate the performance of the analysis and the rapid inspection of the result. Each module is interactive and can be used independently to easily manage every phase of the data processing. The most part of the module processes is automated, in order to speed up the extraction of the parameters of interested and to reduce user’s errors and efforts. However, MISARA integrates some active steps to improve the efficiency and quality control of the data processing. 
The main structure of the interface consists of:

-	Home window, the main panel for the management of all utilities of MISARA.
-	Data preparation window, for the formatting of the Input data.
-	Instrumental analysis modules, for the data quality control.
-	Preliminary analysis modules, for those analytic routines that support the array methods, such as spectral, amplitude, polarization and detection analysis.
-	Array analysis modules, for the source localization methods based on the multichannel techniques.

# Requirements
MISARA can be run on any operation system with Matlab from Release 2018b.

# Documentation
For more details, you can consult the manual of MISARA (see the folder "./MISARA-1.0/Doc").

# Citation 
This is a modified version of the GSpecDisp package (Sadeghisorkhani et al., 2017).
If you use this code for your work, please cite the following DOI:
-	https://doi.org/10.5281/zenodo.4642026

# Starting MISARA
After you have downloaded the software, you should unzip the source code to a suitable directory. To start MISARA, you should run “MISARA.m” (path is: "./MISARA-1.0/MISARA.m") by pressing F5 in the Matlab editor. The software automatically sets the main paths and functions, but it requires the installation of the “GIPPtools” and “irisFetch” libraries. For any information, see the manual of the software. 

# Download Data trial
You can test MISARA downloading "Data examples.rar" from the following link:
-	https://doi.org/10.5281/zenodo.4642026

# Contact
You can send an email to misara.info@gmail.com to report suggestions, comments and bugs.

# References
-	Rost, S., and Thomas, C., 2002. Array seismology: Methods and applications. Reviews of geophysics, 40(3).
-	Sadeghisorkhani, H., Gudmundsson, O., Tryggvason, A., 2017. GSpecDisp: a Matlab GUI package for phase-velocity dispersion measurements from ambient-noise correlations, Computers and Geosciences.

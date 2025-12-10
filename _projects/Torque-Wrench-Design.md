---
layout: project
title: Torque Wrench Final Project MAE 3270
description: Portfolio Submission 
technologies: [MATLAB, Autodesk Fusion, ANSYS]
image: /assets/images/torquewrenchphoto.pdf

---

For this project, I developed a torque-wrench design by beginning with hand calculations in MATLAB to size the critical cross-sections and verify that the design satisfied the required safety factors for yielding, fracture, and fatigue. These preliminary calculations established the fundamental geometry, which I then built into a parametric CAD model in Fusion for iterative refinement. I selected titanium alloy Ti-6Al-4V as the primary material because of its excellent balance of strength, stiffness, and weight compared with conventional steel options used in similar tools.
After finalizing the geometry, I imported the model into ANSYS to perform linear static, fracture, and fatigue simulations. The analysis results demonstrated that the maximum von Mises stresses remained within allowable limits, the computed stress-intensity factors were safely below the critical KIC for Ti-6Al-4V, and the predicted fatigue life surpassed the minimum requirements for the assignment. Altogether, the workflow combined analytical sizing, CAD-driven optimization, and finite-element verification to produce a torque-wrench design with robust structural performance.


[View my PDF]({{ "/assets/FinalHW3270Part2.pdf" | relative_url }})!

Hall C Operation Manual & ESAD Information
===========================================

May 10, 2016

The repository contains the the Hall C operations manual, which is a
work in progress in preparation for the commissioning of the Super
High Momentum Spectrometer (SHMS) and the re-commissioning of Hall C,
including the High Momentum Spectrometer (HMS).

This document is intended to provide guidelines for Scientists (both
staff and visitors) how to safety operate the standard equipment in
Hall C.

This document is NOT intended to provide guidelines for technical
equipment (such as manlifts or the crane) that require special
training to operate NOR does the document provide guidelines on how do
electrical work (such as repairing an HMS/SHMS power supplies).  An
example of what should be covered is how to safely reset power
supplies. (i.e. something that a scientist has done in the past)

The starting point for this manual (first commit) is the Hall C
operating manual dated October, 1999 and revised, November 4, 2002.
This legacy manual is avaible in
[HTML](https://hallcweb.jlab.org/document/personnel/)
or [PDF](https://hallcweb.jlab.org/document/c_operman/c_operman.pdf).

Early drafts of the operating manual and the ESAD, built from this
repository can be found at
https://hallcweb.jlab.org/safety-docs/drafts.

Updated instructions Jan 2023 
==================================
Updated instructions for producing the COO, ESAD and OPS manual

Running doit in the maim hallc_osp directory creates the ops manual and the ESAD in the version subdirectory.  
The ESAD is osp-level0.pdf and the manual is osp-level4.pdf.

The COO is in src/coo and is build with doit that is the src/coo.  
Usually it is sufficient to edit coo_hallc_defs.tex which 
defines experiment numbers, liaison names etc.

There is a figure in the COO that is made with xfig.  
You can probably just edit the coo_HallCorg.fig by hand 
Running "doit" in the src/coo directory will generate 
 will generate the figure as long as the fig2dev utility is installed.
Need to be on the jlabl computers which have fig2dev utility.


ESAD
----
The LaTeX files in this repository build both the operating
manual and the ESAD.  The ESAD Introduction (Chapter1) and General
Hazards (Chapter2) are located at:

src/esad

The rest of the ESAD materials are pulled directly from the operations manual
either as level zero, safety, or uncommented information.

High Level Outline
------------------

High Level OUTLINE

1. Introduction

2. Beamline

3. Target

4. Vacuum Systems

5. Spectrometers (Everything except detectors)

6. Detectors

7. Control Systems

8. Data acquisition and Trigger

9. Analysis Software

Updating Document
-----------------

The simplest way to update the document is to grab the relevant tex
file, either from this repository or from

https://hallcweb.jlab.org/safety-docs/drafts/git/src/

edit it and send it back to me.

If you have materials in word, please just send them to me and I will
reformat into LaTeX.  Please send any images or figures as separate,
high quality files.

If you wish to edit the git repository directly, please contact me to
get permission to access the repository.  Please push any changes to a
separate branch and I will merge into the master branch.

LaTeX Information
-----------------

The purpose of this package is to produce the Hall C OSP manual
in PDF and HTML formats. It contains the source of the text, 
the pictures and tools to make the documents. 

Top directory, static:
src/ - the source (LaTeX) and pictures
scripts/ - auxiliary scripts and the makefile
misc/ - miscellaneous documents - not used regularly

Top directory, dynamic:
run/ - work directory to create the documents

One can create the OSP document with different levels of
detail (noted as "infolevel"), the lower the value, 
the more slim is the document. All the levels contain the 
basic safety information for every system. Additional 
information depends on the level:
infolevel=0 - a short (1 page) description per system including 
              a picture for the layout if needed;
infolevel=1 - plus a description of the system's components;
infolevel=2 - plus a description of the procedures and pictures, 
              like MEDM windows in PNG format;  
infolevel=3 - plus the main principles of the devices' operation;
infolevel=4 - plus photographs and other large pictures
 
Producing the Documents:
-----------------------
In order to produce the OSP document with, say, infolevel=4 one 
has to:
1) ./scripts/config osp 4   (in the top directory)
   This creates a work directory run/ to produce the document 
2) cd run/
3) make pdf  - to create the document (osp.pdf) in PDF format 
4) make html - to create the document (in osp_html/) in HTML format

Browsing the PDF document:
-------------------------
The PDF can be viewed with Acrobat Reader or other Linux based PDF
viewers such as evince or xpdf.  Most browsers can search for a given
word. Also, the document contains hyper-references both inside the
document (so, one can jump forth and back to, say, the literature
references), and also outside, using the standard URL.


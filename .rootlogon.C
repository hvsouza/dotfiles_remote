#include "TInterpreter.h"
{
  gInterpreter->AddIncludePath("/eos/home-h/hvieirad/WVFAnaSoLAr/class");
  gInterpreter->AddIncludePath("/eos/home-h/hvieirad/cold_box_analysis/apc_root/cold_box_analysis/class");
  // gInterpreter->Load("/eos/home-h/hvieirad/SoLAr-decowave/SoLAr-decowave/build/src/libslardec_utils.so");
  gStyle->SetPadTickX(1);
  gStyle->SetPadTickY(1);
  gStyle->SetPadGridX(1);
  gStyle->SetPadGridY(1);
  gStyle->SetOptFit(111);
  gStyle->SetLineScalePS(2)

}


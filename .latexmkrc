#!/usr/bin/env perl

$latex = 'platex -8bit -kanji=utf8 -shell-escape -synctex=1 -interaction=nonstopmode %S';
$dvipdf = 'dvipdfmx -V 7 -f ptex-ipa.map %S';
$bibtex = 'pbibtex -kanji=utf8 %B';
$success_cmd = "gvim --remote-expr 'vimtex#latexmk#callback(1)'";
$failure_cmd = "gvim --remote-expr 'vimtex#latexmk#callback(0)'";

$pdf_mode = 3;

$pdf_update_method = 4;
#$pdf_update_command = "open -a preview %S";
#$pdf_previewer = "/Applications/Preview.app/Contents/MacOS/Preview";
$pdf_previewer = "/Applications/Skim.app/Contents/MacOS/Skim";

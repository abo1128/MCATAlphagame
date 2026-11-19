clue_text <- "letter;mode;clue;answer
A;starts;Non polar, hydrophobic, aliphatic amino acid;Alanine
B;starts;Region of brain responsible for speech production;Broca's area
C;starts;Steroiod hormone produced by adrenal cortex;Cortisol
D;starts;Neurotransmitter involved in reward, motivation and motor control;Dopamine
E;starts;Catalysts that speed up chemical reactions;Enzymes
F;starts;Ketohexose and structural isomer of Glucose;Fructose
G;starts;Metabolic pathway that breaks down glucose into pyruvate;Glycolysis
H;starts;Temporal lobe structure involved in memory consolidation;Hippocampus
I;starts;Component of Freud's model of personality that operates in the unconscious mind;Id
J;starts;SI unit for energy and work;Joule
K;starts;Energy of an object in motion;Kinetic Energy
L;starts;Membrane bound organelles in animal cells that break down macromolecules;Lysosomes
M;starts;Method of division in somatic cells;Mitosis
N;starts;Organelle that houses DNA and controls gene expression in eukaryotic cells;Nucleus
O;starts;Theory of learning that focuses on changing a behavior through consequences;Operant Conditioning
P;starts;Part of brain involved in proprioception, spatial awareness and somastosensory input;Parietal Lobe
Q;starts;Three dimensional arrangement and interaction of multiple polypeptide chains into a single protein complex;Quaternary Structure
R;starts;Cellular structure made of rRNA and proteins;Ribosomes
S;starts;Junction where a neuron passes a signal to another cell;Synapse
T;starts;Sensory relay center in the forebrain;Thalamus
U;starts;Small protein that attaches target proteins to mark them for degradation by proteasome;Ubuiquitin
V;starts;Small sac enclosed by lipid bilayer that transports, stores or digests substances within eukaryotic cells;Vesicle
W;starts;Region of brain responsible for language comprehension;Wernicke's area
X;starts;Noble gas with an atomic weight of 131;Xenon
Y;contains;Digestive enzyme that breaks down complex carbohydrates;Amylase
Z;starts;single, diploid totipotent cell;Zygote"
mcat_clues <- read.csv(text = clue_text, sep = ";",
                       strip.white = TRUE, stringsAsFactors = FALSE)

usethis::use_data(mcat_clues, overwrite = TRUE)

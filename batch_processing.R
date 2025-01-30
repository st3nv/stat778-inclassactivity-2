# install.packages("argparser")
library(argparser)

# number of replications (integer > 0), 
# output directory
# prints the values of these arguments to the console.

args <- arg_parser("Analysis script") |> 
  add_argument("--num-reps",
               help = "Number of replications (integer > 0)",
               type = "integer",
               default = 1) |> 
  add_argument("--output-dir",
               default = ".",
               help = "Folder to store results in") |> 
  parse_args()

cat("Number of replications:", args$num_reps, "\n")
cat("Output directory:", args$output_dir, "\n")

# Test command line arguments
# Rscript batch_processing.R --num-reps 10 --output-dir /tmp
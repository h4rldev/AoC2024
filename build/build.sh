# AoC 2024

# set -x # show commands
set -e            # fail globally
shopt -s nullglob # remove words if not founud

CC="gcc"
CFLAGS="-O3"
LFLAGS=""

DAYS_DIR=$(pwd)/src/days
LIB_DIR=$(pwd)/src/lib

declare -a DAYS

for folder in "$DAYS_DIR"/*; do
  CURRENT_DAY="day${folder##*/}"
  DAYS+=("${CURRENT_DAY}")

  declare -a "$CURRENT_DAY"
  mapfile -t "$CURRENT_DAY" < <(find "$folder" -type f -name "*.c")
done

for day in "${DAYS[@]}"; do
  echo -e "${!day}"
done

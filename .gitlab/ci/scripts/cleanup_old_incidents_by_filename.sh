#!/bin/sh


TARGET_DIR="./content/issues"
DAYS_TO_KEEP=180

# Check if the target directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: The directory $TARGET_DIR does not exist."
  exit 1
fi

# Current date in seconds since epoch
CURRENT_DATE=$(date +%s)

# Iterate over the files in the directory
for file in "$TARGET_DIR"/*; do
  # Check if it is a regular file
  if [ -f "$file" ]; then
    # Extract the filename
    filename=$(basename "$file")

    # Extract the first 10 characters for the date portion
    date_part=$(echo "$filename" | cut -c 1-10)

    # Check if the extracted date matches the expected pattern (YYYY-MM-DD)
    if echo "$date_part" | grep -qE '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'; then
      # Extract year, month, and day from the date part
      year=$(echo "$date_part" | cut -d '-' -f 1)
      month=$(echo "$date_part" | cut -d '-' -f 2)
      day=$(echo "$date_part" | cut -d '-' -f 3)


      # Convert date to seconds since epoch
      file_date=$(date -u -d "$year-$month-$day" +%s 2>/dev/null)
      if [ $? -eq 0 ]; then
        # Calculate the difference in days
        diff_days=$(( (CURRENT_DATE - file_date) / 86400 ))

        # Delete the file if it's older than "$DAYS_TO_KEEP" days
        if [ "$diff_days" -gt "$DAYS_TO_KEEP" ]; then
          echo "Deleting: $file (Date: $file_date)"
          rm "$file"
        fi
      else
        echo "Warning: Invalid date in filename $filename"
      fi
    else
      echo "Skipping file without valid date format: $filename"
    fi
  fi
done

# Final message
echo "All files older than 6 months were deleted from $TARGET_DIR."
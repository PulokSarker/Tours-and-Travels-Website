import os
import csv
from moviepy.editor import VideoFileClip


def extract_metadata(video_path):
    clip = VideoFileClip(video_path)
    metadata = {
        "Filename": clip.filename,
        "duration": clip.duration,
        "fps": clip.fps,
        "size": clip.size,
        "aspect_ratio": clip.aspect_ratio,
        "end": clip.end,
        "audio": clip.audio,
        "constant_size": clip.has_constant_size,
        "ismask": clip.ismask,
        "memoize": clip.memoize,      
        "relative_pos": clip.relative_pos,
        "rotation": clip.rotation,
        "start": clip.start,

    }
    clip.close()
    return metadata


def main():
    input_folder = r"F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\inputvideo"
    output_folder = r"F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\metadata"

    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    video_files = [f for f in os.listdir(
        input_folder) if f.lower().endswith((".mp4", ".mov"))]

    for video_file in video_files:
        video_path = os.path.join(input_folder, video_file)
        metadata = extract_metadata(video_path)

        # Write metadata to a CSV file
        filename = os.path.splitext(video_file)[0]
        csv_path = os.path.join(output_folder, f"{filename}_metadata.csv")

        with open(csv_path, mode="w", newline="", encoding="utf-8") as csv_file:
            csv_writer = csv.writer(csv_file)
            csv_writer.writerow(["Field", "Value"])

            for key, value in metadata.items():
                csv_writer.writerow([key, value])

        print(f"Metadata extracted from {video_path} and saved to {csv_path}")


if __name__ == "__main__":
    main()

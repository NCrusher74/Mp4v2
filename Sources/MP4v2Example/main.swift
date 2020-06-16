import Foundation
import CMP4v2



let fileURL = URL(fileURLWithPath: NSHomeDirectory())
  .appendingPathComponent("Desktop")
  .appendingPathComponent("MP4 File.mp4")

print("Creating an empty MP4 at “\(fileURL.path)”...")
let file = MP4Create(fileURL.path.cString(using: .utf8), 0)
defer { MP4Close(file, 0) }

print("All done.")

class Diary < Formula
  desc "Simple CLI diary"
  homepage "https://github.com/JoshStern/diary"
  url "https://github.com/JoshStern/diary/archive/v0.2.0.tar.gz"
  sha256 "5d1fdcc6af1a3062ce47fbca2c981f51c80e1b1c786b5f533717535ba62d20b3"
  license "GPL-3.0-or-later"

  def install
    bin.install "bin/diary.sh" => "diary"
  end

  test do
    system "#{bin}/diary", init, "#{testpath}/test_diary"
    assert_predicate "#{testpath}/test_diary", :exist?
  end
end

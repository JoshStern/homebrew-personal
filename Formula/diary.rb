class Diary < Formula
  desc "Simple CLI diary"
  homepage "https://github.com/JoshStern/diary"
  url "https://github.com/JoshStern/diary/archive/v0.1.0.tar.gz"
  sha256 "a1844157c34ad7bd22df4cb99aecf80337ba5a6d5e582d689142270cda1219f1"
  license "GPL-3.0-or-later"

  depends_on "git"
  def install
    bin.install "bin/diary.sh" => "diary"
  end

  test do
    system "#{bin}/diary init #{testpath}/test_diary"
    assert_predicate "#{testpath}/test_diary", :exist?
  end
end

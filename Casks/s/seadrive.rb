cask "seadrive" do
  if MacOS.version >= :monterey
    version "3.0.10"
    sha256 "e43c5711510f578be9346e09bd35df8926cd4eb980330acf2d266d7cf70aff22"
    url "https://download.seadrive.org/seadrive-#{version}.pkg",
        verified: "download.seadrive.org/"

    livecheck do
      url "https://www.seafile.com/en/download/"
      regex(%r{href=.*?/seadrive[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    end
    
    depends_on macos: ">= :monterey"
  else
    version "2.0.26"
    sha256 "e43c5711510f578be9346e09bd35df8926cd4eb980330acf2d266d7cf70aff22"
    url "https://download.seadrive.org/seadrive-#{version}.dmg",
        verified: "download.seadrive.org/"

    livecheck do
      url "https://www.seafile.com/en/download/"
      regex(%r{href=.*?/seadrive[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    end

    depends_on macos: ">= :high_sierra"
  end

  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  app "SeaDrive.app"
end

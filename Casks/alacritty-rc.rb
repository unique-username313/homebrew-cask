cask 'alacritty-rc' do
  version '0.5.0-rc3'
  sha256 :no_check

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  appcast 'https://github.com/alacritty/alacritty/releases.atom'
  name 'Alacritty'
  homepage 'https://github.com/alacritty/alacritty/'

  app 'Alacritty.app'
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"

  zap delete: [
                '~/Library/Saved Application State/io.alacritty.savedState',
              ]
end

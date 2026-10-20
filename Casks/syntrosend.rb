cask "syntrosend" do
  version "1.0.4"
  sha256 "ac8e72bbe7cde633cdef618a18dc833a14ede28e33be499dfe022e9d0c2edddf"

  url "https://download.syntrosend.workers.dev/mac"
  name "SyntroSend"
  desc "Fast P2P file transfer and secure SyntroCloud storage alternative to AirDrop"
  homepage "https://syntrosend-app.web.app"

  depends_on arch: :arm64

  app "SyntroSend.app"

  zap trash: [
    "~/Library/Application Support/com.syntrosend.desktop",
    "~/Library/Caches/com.syntrosend.desktop",
    "~/Library/Preferences/com.syntrosend.desktop.plist",
    "~/Library/Saved Application State/com.syntrosend.desktop.savedState",
  ]

  caveats <<~EOS
    SyntroSend allows you to instantly send files, folders, and clipboard text directly
    between Windows, macOS, Linux, and Android devices with high-speed local P2P transfer
    and zero-knowledge encrypted SyntroCloud storage.

    Author: Rishav Kumar Jha
    Publisher: Rishav Kumar Jha
    License: Freeware
    Copyright: Copyright (c) 2026 Rishav Kumar Jha
    Release Notes: https://syntrosend-app.web.app/changelog
    Support: https://syntrosend-app.web.app
  EOS
end

#!/bin/bash
# Sibelius 설정 초기화 스크립트 (더블클릭으로 실행)
# 관리자 비밀번호를 물어보면 Mac 로그인 비밀번호를 입력하세요.

echo "Sibelius 관련 파일을 삭제합니다..."

sudo rm -Rf /Applications/APi1
sudo rm -Rf "/Library/Application Support/Avid/Sibelius/_manuscript/ACr2"
sudo rm -Rf "/Library/Application Support/Avid/Sibelius/_manuscript/Plugins_v2"
sudo rm -Rf "$HOME/Library/Application Support/Avid/Sibelius/_manuscript/HEa3"
defaults write com.avid.Sibelius.plist SibeliusTierSelection.TrialDialogSavedChoice 3

echo ""
echo "완료되었습니다. 아무 키나 누르면 창이 닫힙니다."
read -n 1 -s
osascript -e 'tell application "Terminal" to close front window' >/dev/null 2>&1 &
exit 0

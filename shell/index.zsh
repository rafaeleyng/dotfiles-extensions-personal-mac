#!/bin/bash

echo oi

########################################
# switchaudio-osx - https://github.com/deweller/switchaudio-osx
########################################
S_INP_RAW="MacBook Pro Microphone"
S_OUT_RAW="MacBook Pro Speakers"

S_INP_SIMPLE="External Microphone"
S_OUT_SIMPLE="External Headphones"

S_INP_FANCY="Microsoft LifeChat LX-3000"
S_OUT_FANCY=$S_INP_FANCY

S_INP_PRO="ARCANO AM-BLACK-1 " # yes, with a trailing space ¯\_(ツ)_/¯
S_OUT_PRO="Microsoft LifeChat LX-3000"

# BlackHole, see:
# - https://github.com/ExistentialAudio/BlackHole
# - https://www.youtube.com/watch?v=sT7YKMTdnX4
S_INP_BLACKHOLE="In BlackHole + Arcano"
S_OUT_BLACKHOLE="Out BlackHole + LifeChat"

alias s='SwitchAudioSource'

function switch_audio_source () {
  SOUND_INP=$1
  SOUND_OUT=$2

  s -t input  -s "$SOUND_INP"
  s -t output -s "$SOUND_OUT"
  s -t system -s "$SOUND_OUT"
}

# shellcheck disable=SC2139
alias s1="switch_audio_source \"$S_INP_RAW\" \"$S_OUT_RAW\""              # raw
# shellcheck disable=SC2139
alias s2="switch_audio_source \"$S_INP_SIMPLE\" \"$S_OUT_SIMPLE\""        # simple
# shellcheck disable=SC2139
alias s3="switch_audio_source \"$S_INP_FANCY\" \"$S_OUT_FANCY\""          # fancy
# shellcheck disable=SC2139
alias s4="switch_audio_source \"$S_INP_PRO\" \"$S_OUT_PRO\""              # pro
# shellcheck disable=SC2139
alias s5="switch_audio_source \"$S_INP_BLACKHOLE\" \"$S_OUT_BLACKHOLE\""  # blackhole

########################################
# study
########################################
function start_study () {
  open "/Applications/Anki.app/"
  open "/Applications/Tomato One.app/"
  echo "read: https://docs.google.com/document/d/1b1tTPc2Vgxip-g9ztQ7mYfQMPOF2dEOeTE3fNjkBRhM/edit"
}

########################################
# audacity - https://apple.stackexchange.com/questions/380863/why-is-audacity-2-3-x-not-recording-audio-input-on-macos-catalina-plus-workarou
########################################
alias audacity="open /Applications/Audacity.app/Contents/MacOS/Audacity"

########################################
# ssh - for personal cluster
########################################
alias ssho="ssh -o \"UserKnownHostsFile /dev/null\""

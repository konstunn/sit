#!/bin/bash

set -v

#ping -qc 1 $(idn2 президент.рф)

ping -qc 1 "$(idn2 правительcтво.рф)"

set +v

exit

ping -qc 1 "$(idn2 яндекc.рф)"

ping -qc 1 "$(idn2 гугл.рф)"

ping -qc 1 "$(idn2 рамблер.рф)"

ping -qc 1 "$(idn2 почта.рф)"

set +v

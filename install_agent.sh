# Install SolarWinds IPAM Agent

if [ "`id -u`" = "0" ]; then ESH='sh'; export SWR=''; else ESH='su'; export SWR='switch to root and '; echo "You will be prompted for root password."; fi; ${ESH} -c 'D=rhel-5;P=/Orion/AgentManagement/LinuxPackageRepository.ashx?path=;U="http://192.168.10.9:8787 http://solar-ipam:8787";L=/etc/yum.repos.d;M=${L}/swiagent-${D}.mirrors;mkdir -p ${L};for u in ${U};do echo "${u}${P}/dists/${D}/\$basearch";done>$M;printf "[swiagent]\nname=SolarWinds Agent\nmirrorlist=file://%s\nenabled=1\ngpgcheck=0\n" $M>${L}/swiagent-${D}.repo; echo "Repository for SolarWinds agent was added. To install agent ${SWR}use following commands:"; echo "  yum clean all && yum install swiagent"'


yum clean all && yum install swiagent
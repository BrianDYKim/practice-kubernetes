# upgrade와 동시에 해당 release가 존재하지 않는 경우 설치까지 진행하는 명령어
helm upgrade --install my-release bitnami/wordpress -f myvalues.yaml

# crash난 경우에 롤백을 시키며 업그레이드를 진행하는 명령어
helm upgrade --atomic my-release bitnami/wordpress --set replicaCount=2

# timeout을 걸어서 무결한 업그레이드가 진행되지 않는 경우 롤백시키는 명령어
helm upgrade --atomic my-release bitnami/wordpress --timeout 2s --set replicaCount=3

# manifest를 release로부터 뽑아오는 명령어
helm get manifest my-release > my-release.yaml

# get values를 통해서 revision 정보를 뽑아오는 명령어
# helm get values [revision_name] --revision [INT]
helm get values my-release --revision 2

# artifact hub로부터 원하는 helm 패키지를 검색하는 명령어
helm search hub wordpress

# repository로부터 검색하는 명령어
helm search repo bitnami

# helm chart를 생성하는 명령어
helm create my-own-chart

# helm chart를 패키징하는 명령어
# helm package [helm_chart_path]
helm package my-own-chart

# helm을 통해 bitnami/wordpress 설치
helm install my-release bitnami/wordpress

# replicaCount를 3으로 수정
helm upgrade my-release bitnami/wordpress -f myvalues.yaml

# 차이점 조회
helm diff revision my-release 1 2

# helm rollback
helm rollback my-release 1

# values를 통해 helm에 부여된 값 조회
helm get values my-release --revision 3

# helm delete with keeping history
helm delete my-release --keep-history

# show helm history of my-release
helm history my-release

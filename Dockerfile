FROM registry.ci.openshift.org/openshift/release:rhel-9-release-golang-1.20-openshift-4.15 AS builder

WORKDIR /workspace
COPY . .
ENV GO_COMPLIANCE_INFO=0
RUN go build .

FROM registry.access.redhat.com/ubi8/ubi-minimal 

COPY --from=builder /workspace/go-hello-world /usr/local/bin/

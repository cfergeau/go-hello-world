Test for GO_COMPLIANCE_INFO in the OpenShift build images with the go compliance shim.

Build with `podman build .`, there should be no noise from the go compliance
shim. This is due to GO_COMPLIANCE_INFO being set to 0 in the Dockerfile.

If you comment out the `ENV GO_COMPLIANCE_INFO` line in the Dockerfile, then
the go compliance shim logs will appear.


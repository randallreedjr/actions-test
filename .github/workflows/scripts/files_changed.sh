echo "::set-output name=FILES_CHANGED::$(git diff --name-only `git merge-base origin/${GITHUB_BASE_REF} origin/${GITHUB_HEAD_REF}`..origin/${GITHUB_HEAD_REF} "**/*/*.sh" | awk -F '/' '{ print $NF }' | sed "s/\.sh$/${children}/g" | sed 's/^/+/g' | tr '\n' ' ')"

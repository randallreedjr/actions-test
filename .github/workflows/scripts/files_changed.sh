echo "::set-output name=FILES_CHANGED::$(git diff --name-only `git merge-base origin/${{ github.base_ref }} origin/${{ github.head_ref }}`..origin/${{ github.head_ref }} "**/*/*.sh")"

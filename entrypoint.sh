git remote add target https://${INPUT_TARGET_USERNAME}:${INPUT_TARGET_TOKEN}@${INPUT_TARGET_URL#https://}

case "${GITHUB_EVENT_NAME}" in 
workflow_dispatch)
        git push --all target
        git push --tags target
        ;;
    *)
        break
        ;;
esac

# Continuous Integration Best Practices

## GitHub Actions

- Keep your actions minimal
- Install only necessary dependencies
- Never hardcode secrets
- Don't use self-hosted runners in public repositories

## Jenkins

- Make sure Groovy code is used only as glue
- Avoid complex Groovy code
- Keep Jenkins Secure
- Always backup the JENKINS_HOME directory

## References

- <https://www.datree.io/resources/github-actions-best-practices>
- <https://www.jenkins.io/doc/book/pipeline/pipeline-best-practices/>
- <https://www.lambdatest.com/blog/jenkins-best-practices/>
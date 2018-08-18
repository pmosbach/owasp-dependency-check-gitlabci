FROM owasp/dependency-check

RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly

# This is intended to be a sane fallback, but you should override this via your .gitlab-ci.yml
CMD ["--scan","/builds","--format","ALL","--project","GENERIC"]
ENTRYPOINT ["/usr/share/dependency-check/bin/dependency-check.sh"]
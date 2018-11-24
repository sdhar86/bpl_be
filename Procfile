scheduler: bundle exec rake resque:scheduler

wildcard_worker: env TERM_CHILD=1 RESQUE_TERM_TIMEOUT=5 RESQUE_PRE_SHUTDOWN_TIMEOUT=10 VVERBOSE=1 RUN_AT_EXIT_HOOKS=yes bundle exec rake resque:work QUEUE=*
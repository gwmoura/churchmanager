# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/george/workspace/churchmanager/"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/george/workspace/churchmanager/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/george/workspace/churchmanager/log/unicorn.log"
stdout_path "/home/george/workspace/churchmanager/log/unicorn.log"

# Unicorn socket
#listen "/tmp/unicorn.churchmanager.sock"
listen "/tmp/unicorn.churchmanager.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
#include <chrono>
#include <thread>

class Timer
{
  using timep_t  = std::chrono::steady_clock::time_point;
  timep_t _start = std::chrono::steady_clock::now(), _end = {};

public:
  void
  tick()
  {
    _end   = timep_t{};
    _start = std::chrono::steady_clock::now();
  }

  void
  tock()
  {
    _end = std::chrono::steady_clock::now();
  }

  long long
  duration_in_ms() const
  {
    return std::chrono::duration_cast<std::chrono::milliseconds>(_end - _start).count();
  }
};

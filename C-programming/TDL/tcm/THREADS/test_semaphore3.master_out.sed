Main() running.
semaphore = Semaphore:  0x........
   isThreadWaiting.......: 0
   wakeupAlreadyReceived.: 0
   sem_getvalue..........:  0
   SemaphoreMutex: Mutex:  0x........   (Unlocked)

Starting thread One...
Thread:  started
Thread:  waiting on semaphore


semaphore . wakeupOtherThread(FALSE) = SUCCESS
semaphore . wakeupOtherThread(FALSE) = SUCCESS
semaphore = Semaphore:  0x........
   isThreadWaiting.......: 1
   wakeupAlreadyReceived.: 1
   sem_getvalue..........:  2
   SemaphoreMutex: Mutex:  0x........   (Unlocked)


[Semaphore:waitForSignal(waiting)]  Warning:  Semaphore count was non-zero.  Decrementing...

Thread:  waitForSignal() returned:  SUCCESS
Thread:  ending.
semaphore = Semaphore:  0x........
   isThreadWaiting.......: 0
   wakeupAlreadyReceived.: 1
   sem_getvalue..........:  0
   SemaphoreMutex: Mutex:  0x........   (Unlocked)

semaphore = Semaphore:  0x........
   isThreadWaiting.......: 0
   wakeupAlreadyReceived.: 0
   sem_getvalue..........:  0
   SemaphoreMutex: Mutex:  0x........   (Unlocked)

semaphore . wakeupOtherThread(FALSE) = [Semaphore:waitForSignal]  Warning:  No thread is waiting on this Semaphore.
FAILURE
semaphore = Semaphore:  0x........
   isThreadWaiting.......: 0
   wakeupAlreadyReceived.: 1
   sem_getvalue..........:  0
   SemaphoreMutex: Mutex:  0x........   (Unlocked)

Starting thread Two...
Thread:  started
Thread:  waiting on semaphore


Thread:  waitForSignal() returned:  SUCCESS
Thread:  ending.
semaphore = Semaphore:  0x........
   isThreadWaiting.......: 0
   wakeupAlreadyReceived.: 1
   sem_getvalue..........:  0
   SemaphoreMutex: Mutex:  0x........   (Unlocked)

Main() ending...

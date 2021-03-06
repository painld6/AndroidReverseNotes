package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.tencent.matrix.trace.core.AppMethodBeat;

public class PendingResultUtil {
    private static final StatusConverter zzun = new zzk();

    public interface StatusConverter {
        ApiException convert(Status status);
    }

    public interface ResultConverter<R extends Result, T> {
        T convert(R r);
    }

    static {
        AppMethodBeat.i(61358);
        AppMethodBeat.o(61358);
    }

    public static <R extends Result, T extends Response<R>> Task<T> toResponseTask(PendingResult<R> pendingResult, T t) {
        AppMethodBeat.i(61356);
        Task toTask = toTask(pendingResult, new zzm(t));
        AppMethodBeat.o(61356);
        return toTask;
    }

    public static <R extends Result, T> Task<T> toTask(PendingResult<R> pendingResult, ResultConverter<R, T> resultConverter) {
        AppMethodBeat.i(61355);
        Task toTask = toTask(pendingResult, resultConverter, zzun);
        AppMethodBeat.o(61355);
        return toTask;
    }

    public static <R extends Result, T> Task<T> toTask(PendingResult<R> pendingResult, ResultConverter<R, T> resultConverter, StatusConverter statusConverter) {
        AppMethodBeat.i(61354);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.addStatusListener(new zzl(pendingResult, taskCompletionSource, resultConverter, statusConverter));
        Task task = taskCompletionSource.getTask();
        AppMethodBeat.o(61354);
        return task;
    }

    public static <R extends Result> Task<Void> toVoidTask(PendingResult<R> pendingResult) {
        AppMethodBeat.i(61357);
        Task toTask = toTask(pendingResult, new zzn());
        AppMethodBeat.o(61357);
        return toTask;
    }
}

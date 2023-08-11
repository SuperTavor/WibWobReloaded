.class public interface abstract Lcom/google/android/gms/plus/People;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;
.end method

.method public abstract load(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public varargs abstract load(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract loadConnected(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method

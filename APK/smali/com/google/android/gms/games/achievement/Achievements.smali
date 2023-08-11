.class public interface abstract Lcom/google/android/gms/games/achievement/Achievements;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.end method

.method public abstract increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
.end method

.method public abstract incrementImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract reveal(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.end method

.method public abstract revealImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract setSteps(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
.end method

.method public abstract setStepsImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.end method

.method public abstract unlockImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end method

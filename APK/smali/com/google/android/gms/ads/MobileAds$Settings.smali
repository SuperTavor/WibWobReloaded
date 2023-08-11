.class public final Lcom/google/android/gms/ads/MobileAds$Settings;
.super Ljava/lang/Object;


# instance fields
.field private final zznV:Lcom/google/android/gms/ads/internal/client/zzac;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzac;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zznV:Lcom/google/android/gms/ads/internal/client/zzac;

    return-void
.end method


# virtual methods
.method public getTrackingId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zznV:Lcom/google/android/gms/ads/internal/client/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGoogleAnalyticsEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zznV:Lcom/google/android/gms/ads/internal/client/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->isGoogleAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public setGoogleAnalyticsEnabled(Z)Lcom/google/android/gms/ads/MobileAds$Settings;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zznV:Lcom/google/android/gms/ads/internal/client/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzac;->zzk(Z)V

    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/google/android/gms/ads/MobileAds$Settings;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zznV:Lcom/google/android/gms/ads/internal/client/zzac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzac;->zzO(Ljava/lang/String;)V

    return-object p0
.end method

.method zzaG()Lcom/google/android/gms/ads/internal/client/zzac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zznV:Lcom/google/android/gms/ads/internal/client/zzac;

    return-object v0
.end method

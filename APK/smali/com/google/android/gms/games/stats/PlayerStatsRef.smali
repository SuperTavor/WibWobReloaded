.class public Lcom/google/android/gms/games/stats/PlayerStatsRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/stats/PlayerStats;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza(Lcom/google/android/gms/games/stats/PlayerStats;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzvU()Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object v0

    return-object v0
.end method

.method public getAverageSessionLength()F
    .locals 1

    const-string v0, "ave_session_length_minutes"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getDaysSinceLastPlayed()I
    .locals 1

    const-string v0, "days_since_last_played"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNumberOfPurchases()I
    .locals 1

    const-string v0, "num_purchases"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNumberOfSessions()I
    .locals 1

    const-string v0, "num_sessions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSessionPercentile()F
    .locals 1

    const-string v0, "num_sessions_percentile"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getSpendPercentile()F
    .locals 1

    const-string v0, "spend_percentile"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zza(Lcom/google/android/gms/games/stats/PlayerStats;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->zzb(Lcom/google/android/gms/games/stats/PlayerStats;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->zzvU()Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzvT()F
    .locals 1

    const-string v0, "churn_probability"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/stats/PlayerStatsRef;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public zzvU()Lcom/google/android/gms/games/stats/PlayerStats;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;-><init>(Lcom/google/android/gms/games/stats/PlayerStats;)V

    return-object v0
.end method

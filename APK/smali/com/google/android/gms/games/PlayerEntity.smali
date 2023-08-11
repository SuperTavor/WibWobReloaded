.class public final Lcom/google/android/gms/games/PlayerEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mVersionCode:I

.field private final zzTa:Ljava/lang/String;

.field private final zzYf:Ljava/lang/String;

.field private final zzajf:Ljava/lang/String;

.field private final zzatF:Ljava/lang/String;

.field private final zzatG:Ljava/lang/String;

.field private final zzatZ:J

.field private final zzatu:Landroid/net/Uri;

.field private final zzatv:Landroid/net/Uri;

.field private final zzaua:I

.field private final zzaub:J

.field private final zzauc:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

.field private final zzaud:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final zzaue:Z

.field private final zzauf:Z

.field private final zzaug:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;

    invoke-direct {v0}, Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Lcom/google/android/gms/games/PlayerLevelInfo;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/PlayerEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzYf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTa:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatu:Landroid/net/Uri;

    iput-object p11, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatF:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatv:Landroid/net/Uri;

    iput-object p12, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatG:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatZ:J

    iput p8, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaua:I

    iput-wide p9, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaub:J

    iput-object p13, p0, Lcom/google/android/gms/games/PlayerEntity;->zzajf:Ljava/lang/String;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaue:Z

    iput-object p14, p0, Lcom/google/android/gms/games/PlayerEntity;->zzauc:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaud:Lcom/google/android/gms/games/PlayerLevelInfo;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzauf:Z

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaug:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Player;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Player;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/gms/games/PlayerEntity;->mVersionCode:I

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzYf:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTa:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatu:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatF:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatv:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatG:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatZ:J

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zztG()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaua:I

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLastPlayedWithTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaub:J

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzajf:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zztH()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaue:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zztI()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzauc:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaud:Lcom/google/android/gms/games/PlayerLevelInfo;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zztF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzauf:Z

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zztE()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaug:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->mName:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzYf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzs(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTa:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzs(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatZ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzZ(Z)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;-><init>(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/Player;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zztF()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zztF()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zztE()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zztE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/Player;)I
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zztF()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zztE()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zzc(Lcom/google/android/gms/games/Player;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "PlayerId"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "DisplayName"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "HasDebugAccess"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zztF()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "IconImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "IconImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "HiResImageUri"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "HiResImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "RetrievedTimestamp"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "Title"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "LevelInfo"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "GamerTag"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zztE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "Name"

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzc(Ljava/lang/Integer;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzd(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzcV(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzck(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic zztC()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->zzoT()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTa:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTa:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzmo;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatv:Landroid/net/Uri;

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatG:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatu:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatF:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaub:J

    return-wide v0
.end method

.method public getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaud:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzYf:Ljava/lang/String;

    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatZ:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzajf:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzajf:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzmo;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->mVersionCode:I

    return v0
.end method

.method public hasHiResImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzb(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzc(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzoU()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/PlayerEntityCreator;->zza(Lcom/google/android/gms/games/PlayerEntity;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzYf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzTa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatu:Landroid/net/Uri;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatv:Landroid/net/Uri;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatZ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatu:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzatv:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public zztE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaug:Ljava/lang/String;

    return-object v0
.end method

.method public zztF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzauf:Z

    return v0
.end method

.method public zztG()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaua:I

    return v0
.end method

.method public zztH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzaue:Z

    return v0
.end method

.method public zztI()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzauc:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    return-object v0
.end method

.class public final Lcom/google/android/gms/games/achievement/AchievementEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/achievement/Achievement;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mState:I

.field private final mVersionCode:I

.field private final zzWJ:I

.field private final zzaqZ:Ljava/lang/String;

.field private final zzauA:J

.field private final zzauB:J

.field private final zzauq:Ljava/lang/String;

.field private final zzaur:Landroid/net/Uri;

.field private final zzaus:Ljava/lang/String;

.field private final zzaut:Landroid/net/Uri;

.field private final zzauu:Ljava/lang/String;

.field private final zzauv:I

.field private final zzauw:Ljava/lang/String;

.field private final zzaux:Lcom/google/android/gms/games/PlayerEntity;

.field private final zzauy:I

.field private final zzauz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/achievement/AchievementEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/games/PlayerEntity;IILjava/lang/String;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauq:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzWJ:I

    iput-object p4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaqZ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaur:Landroid/net/Uri;

    iput-object p7, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaus:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaut:Landroid/net/Uri;

    iput-object p9, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauu:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauv:I

    iput-object p11, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauw:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaux:Lcom/google/android/gms/games/PlayerEntity;

    iput p13, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mState:I

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauy:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauz:Ljava/lang/String;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauA:J

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauB:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/achievement/Achievement;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauq:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzWJ:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaqZ:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaur:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaus:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaut:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauu:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaux:Lcom/google/android/gms/games/PlayerEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mState:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauA:J

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauB:J

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauv:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedTotalSteps()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauw:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauy:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedCurrentSteps()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauz:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauq:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzs(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaqZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzs(Ljava/lang/Object;)V

    return-void

    :cond_0
    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauv:I

    iput-object v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauw:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauy:I

    iput-object v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauz:Ljava/lang/String;

    goto :goto_0
.end method

.method static zza(Lcom/google/android/gms/games/achievement/Achievement;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    :goto_0
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method static zza(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/android/gms/games/achievement/Achievement;

    if-nez v0, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    move v0, v1

    move v2, v1

    goto/16 :goto_1
.end method

.method static zzb(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "Id"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "Name"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "Description"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "Player"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "State"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "CurrentSteps"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    const-string v1, "TotalSteps"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

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

    invoke-static {p0, p1}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/achievement/Achievement;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->freeze()Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v0

    return-object v0
.end method

.method public getAchievementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauq:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSteps()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzZ(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zztM()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaqZ:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaqZ:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzmo;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getFormattedCurrentSteps()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzZ(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zztN()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzZ(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauz:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzmo;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormattedTotalSteps()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzZ(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zztL()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzZ(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauw:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzmo;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastUpdatedTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauA:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzmo;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaux:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public getRevealedImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaut:Landroid/net/Uri;

    return-object v0
.end method

.method public getRevealedImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauu:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mState:I

    return v0
.end method

.method public getTotalSteps()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzZ(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zztK()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzWJ:I

    return v0
.end method

.method public getUnlockedImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaur:Landroid/net/Uri;

    return-object v0
.end method

.method public getUnlockedImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzaus:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mVersionCode:I

    return v0
.end method

.method public getXpValue()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauB:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza(Lcom/google/android/gms/games/achievement/Achievement;)I

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

    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzb(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/achievement/AchievementEntityCreator;->zza(Lcom/google/android/gms/games/achievement/AchievementEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zztK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauv:I

    return v0
.end method

.method public zztL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauw:Ljava/lang/String;

    return-object v0
.end method

.method public zztM()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauy:I

    return v0
.end method

.method public zztN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzauz:Ljava/lang/String;

    return-object v0
.end method

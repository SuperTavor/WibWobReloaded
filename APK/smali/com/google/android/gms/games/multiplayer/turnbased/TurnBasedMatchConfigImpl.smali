.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;
.super Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;


# instance fields
.field private final zzaAD:I

.field private final zzaAT:Landroid/os/Bundle;

.field private final zzaAU:[Ljava/lang/String;

.field private final zzaBc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;-><init>()V

    iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->zzaAD:I

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;->zzaAD:I

    iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->zzaBc:I

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;->zzaBc:I

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->zzaAT:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;->zzaAT:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->zzaAS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->zzaAS:Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;->zzaAU:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAutoMatchCriteria()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;->zzaAT:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInvitedPlayerIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;->zzaAU:[Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;->zzaAD:I

    return v0
.end method

.method public zzvN()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfigImpl;->zzaBc:I

    return v0
.end method

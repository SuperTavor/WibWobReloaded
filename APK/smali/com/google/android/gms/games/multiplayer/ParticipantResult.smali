.class public final Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final MATCH_RESULT_DISAGREED:I = 0x5

.field public static final MATCH_RESULT_DISCONNECT:I = 0x4

.field public static final MATCH_RESULT_LOSS:I = 0x1

.field public static final MATCH_RESULT_NONE:I = 0x3

.field public static final MATCH_RESULT_TIE:I = 0x2

.field public static final MATCH_RESULT_UNINITIALIZED:I = -0x1

.field public static final MATCH_RESULT_WIN:I = 0x0

.field public static final PLACING_UNINITIALIZED:I = -0x1


# instance fields
.field private final mVersionCode:I

.field private final zzaAJ:I

.field private final zzaAK:I

.field private final zzawg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->zzawg:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/games/internal/constants/MatchResult;->isValid(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzZ(Z)V

    iput p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->zzaAJ:I

    iput p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->zzaAK:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(ILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->zzawg:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->zzaAK:I

    return v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->zzaAJ:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;->zza(Lcom/google/android/gms/games/multiplayer/ParticipantResult;Landroid/os/Parcel;I)V

    return-void
.end method

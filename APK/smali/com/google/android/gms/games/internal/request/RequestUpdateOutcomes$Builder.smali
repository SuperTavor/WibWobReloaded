.class public final Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;
.super Ljava/lang/Object;


# instance fields
.field private zzYm:I

.field private zzazS:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzazS:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzYm:I

    return-void
.end method


# virtual methods
.method public zzgj(I)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzYm:I

    return-object p0
.end method

.method public zzvF()Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
    .locals 4

    new-instance v0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;

    iget v1, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzYm:I

    iget-object v2, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzazS:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;-><init>(ILjava/util/HashMap;Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$1;)V

    return-object v0
.end method

.method public zzx(Ljava/lang/String;I)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/games/internal/constants/RequestUpdateResultOutcome;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzazS:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

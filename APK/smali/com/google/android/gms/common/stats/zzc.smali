.class public final Lcom/google/android/gms/common/stats/zzc;
.super Ljava/lang/Object;


# static fields
.field public static zzahG:Lcom/google/android/gms/internal/zzlr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gms:common:stats:max_num_of_events"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlr;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzlr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc;->zzahG:Lcom/google/android/gms/internal/zzlr;

    return-void
.end method

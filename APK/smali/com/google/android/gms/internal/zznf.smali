.class public Lcom/google/android/gms/internal/zznf;
.super Ljava/lang/Object;


# static fields
.field public static final zzanB:Lcom/google/android/gms/internal/zznf$zza;

.field public static final zzanC:Lcom/google/android/gms/internal/zznf$zzb;

.field public static final zzanD:Lcom/google/android/gms/internal/zznf$zzd;

.field public static final zzanE:Lcom/google/android/gms/internal/zznf$zzc;

.field public static final zzanF:Lcom/google/android/gms/internal/zznf$zzf;

.field public static final zzanG:Lcom/google/android/gms/internal/zznf$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zznf$zza;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zznf$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznf;->zzanB:Lcom/google/android/gms/internal/zznf$zza;

    new-instance v0, Lcom/google/android/gms/internal/zznf$zzb;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zznf$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznf;->zzanC:Lcom/google/android/gms/internal/zznf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zznf$zzd;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zznf$zzd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznf;->zzanD:Lcom/google/android/gms/internal/zznf$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zznf$zzc;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zznf$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznf;->zzanE:Lcom/google/android/gms/internal/zznf$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zznf$zzf;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zznf$zzf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznf;->zzanF:Lcom/google/android/gms/internal/zznf$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zznf$zze;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zznf$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznf;->zzanG:Lcom/google/android/gms/internal/zznf$zze;

    return-void
.end method

.class public final Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
.super Ljava/lang/Object;


# instance fields
.field private zzLe:Ljava/lang/String;

.field private zzQU:Lcom/google/android/gms/appdatasearch/DocumentId;

.field private zzQV:J

.field private zzQW:I

.field private zzQX:Lcom/google/android/gms/appdatasearch/DocumentContents;

.field private zzQY:Z

.field private zzQZ:I

.field private zzRa:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQV:J

    iput v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQW:I

    iput v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQZ:I

    iput-boolean v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQY:Z

    iput v3, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzRa:I

    return-void
.end method


# virtual methods
.method public zzO(Z)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQY:Z

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/appdatasearch/DocumentContents;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQX:Lcom/google/android/gms/appdatasearch/DocumentContents;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQU:Lcom/google/android/gms/appdatasearch/DocumentId;

    return-object p0
.end method

.method public zzan(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQW:I

    return-object p0
.end method

.method public zzao(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzRa:I

    return-object p0
.end method

.method public zzlv()Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 11

    new-instance v0, Lcom/google/android/gms/appdatasearch/UsageInfo;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQU:Lcom/google/android/gms/appdatasearch/DocumentId;

    iget-wide v2, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQV:J

    iget v4, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQW:I

    iget-object v5, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzLe:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQX:Lcom/google/android/gms/appdatasearch/DocumentContents;

    iget-boolean v7, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQY:Z

    iget v8, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQZ:I

    iget v9, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzRa:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(Lcom/google/android/gms/appdatasearch/DocumentId;JILjava/lang/String;Lcom/google/android/gms/appdatasearch/DocumentContents;ZIILcom/google/android/gms/appdatasearch/UsageInfo$1;)V

    return-object v0
.end method

.method public zzw(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzQV:J

    return-object p0
.end method

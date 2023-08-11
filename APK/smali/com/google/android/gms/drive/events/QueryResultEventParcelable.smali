.class public Lcom/google/android/gms/drive/events/QueryResultEventParcelable;
.super Lcom/google/android/gms/drive/WriteAwareParcelable;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/events/zzk;


# instance fields
.field final mVersionCode:I

.field final zzabq:Lcom/google/android/gms/common/data/DataHolder;

.field final zzajR:Z

.field final zzajS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/QueryResultEventParcelable;->CREATOR:Lcom/google/android/gms/drive/events/zzk;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/WriteAwareParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/events/QueryResultEventParcelable;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/QueryResultEventParcelable;->zzabq:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/events/QueryResultEventParcelable;->zzajR:Z

    iput p4, p0, Lcom/google/android/gms/drive/events/QueryResultEventParcelable;->zzajS:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public zzJ(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/zzk;->zza(Lcom/google/android/gms/drive/events/QueryResultEventParcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrh()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/events/QueryResultEventParcelable;->zzabq:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public zzri()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/QueryResultEventParcelable;->zzajR:Z

    return v0
.end method

.method public zzrj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/events/QueryResultEventParcelable;->zzajS:I

    return v0
.end method

-- CreateTable
CREATE TABLE `Role` (
    `id` VARCHAR(191) NOT NULL,
    `rolename` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Admin` (
    `id` VARCHAR(191) NOT NULL,
    `roleId` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `HoTen` VARCHAR(191) NOT NULL,
    `Gioitinh` VARCHAR(191) NOT NULL,
    `NamSinh` DATETIME(3) NOT NULL,
    `Diachi` VARCHAR(191) NOT NULL,
    `Sdt` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `KhachHang` (
    `id` VARCHAR(191) NOT NULL,
    `roleId` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `Diachi` VARCHAR(191) NOT NULL,
    `HoTen` VARCHAR(191) NOT NULL,
    `Sdt` INTEGER NOT NULL,
    `NamSinh` DATETIME(3) NOT NULL,
    `Gioitinh` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ChuTro` (
    `id` VARCHAR(191) NOT NULL,
    `roleId` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `Diachi` VARCHAR(191) NOT NULL,
    `Hoten` VARCHAR(191) NOT NULL,
    `Sdt` INTEGER NOT NULL,
    `NamSinh` DATETIME(3) NOT NULL,
    `Gioitinh` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `BaiDang` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `DiaChi` VARCHAR(191) NOT NULL,
    `GiaThue` DECIMAL(65, 30) NOT NULL,
    `adminId` VARCHAR(191) NOT NULL,
    `chutroId` VARCHAR(191) NOT NULL,
    `trangthai` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `BinhLuan` (
    `id` VARCHAR(191) NOT NULL,
    `Noidung` VARCHAR(191) NOT NULL,
    `BaiDangId` VARCHAR(191) NOT NULL,
    `KhachHangId` VARCHAR(191) NOT NULL,
    `adminId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `YeuThich` (
    `id` VARCHAR(191) NOT NULL,
    `BaiDangId` VARCHAR(191) NOT NULL,
    `KhachHangId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ThuePhong` (
    `id` VARCHAR(191) NOT NULL,
    `BaiDangId` VARCHAR(191) NOT NULL,
    `KhachHangId` VARCHAR(191) NOT NULL,
    `ChutroId` VARCHAR(191) NOT NULL,
    `adminId` VARCHAR(191) NOT NULL,
    `Ngaythue` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ThongBao` (
    `id` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `adminId` VARCHAR(191) NOT NULL,
    `chutroId` VARCHAR(191) NOT NULL,
    `rentalId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Admin` ADD CONSTRAINT `Admin_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `Role`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `KhachHang` ADD CONSTRAINT `KhachHang_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `Role`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ChuTro` ADD CONSTRAINT `ChuTro_roleId_fkey` FOREIGN KEY (`roleId`) REFERENCES `Role`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `BaiDang` ADD CONSTRAINT `BaiDang_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `Admin`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `BaiDang` ADD CONSTRAINT `BaiDang_chutroId_fkey` FOREIGN KEY (`chutroId`) REFERENCES `ChuTro`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `BinhLuan` ADD CONSTRAINT `BinhLuan_BaiDangId_fkey` FOREIGN KEY (`BaiDangId`) REFERENCES `BaiDang`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `BinhLuan` ADD CONSTRAINT `BinhLuan_KhachHangId_fkey` FOREIGN KEY (`KhachHangId`) REFERENCES `KhachHang`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `BinhLuan` ADD CONSTRAINT `BinhLuan_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `Admin`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `YeuThich` ADD CONSTRAINT `YeuThich_BaiDangId_fkey` FOREIGN KEY (`BaiDangId`) REFERENCES `BaiDang`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `YeuThich` ADD CONSTRAINT `YeuThich_KhachHangId_fkey` FOREIGN KEY (`KhachHangId`) REFERENCES `KhachHang`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ThuePhong` ADD CONSTRAINT `ThuePhong_BaiDangId_fkey` FOREIGN KEY (`BaiDangId`) REFERENCES `BaiDang`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ThuePhong` ADD CONSTRAINT `ThuePhong_KhachHangId_fkey` FOREIGN KEY (`KhachHangId`) REFERENCES `KhachHang`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ThuePhong` ADD CONSTRAINT `ThuePhong_ChutroId_fkey` FOREIGN KEY (`ChutroId`) REFERENCES `ChuTro`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ThuePhong` ADD CONSTRAINT `ThuePhong_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `Admin`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ThongBao` ADD CONSTRAINT `ThongBao_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `Admin`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ThongBao` ADD CONSTRAINT `ThongBao_chutroId_fkey` FOREIGN KEY (`chutroId`) REFERENCES `ChuTro`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ThongBao` ADD CONSTRAINT `ThongBao_rentalId_fkey` FOREIGN KEY (`rentalId`) REFERENCES `ThuePhong`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

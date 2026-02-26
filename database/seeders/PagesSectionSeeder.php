<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class PagesSectionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

//         title
// section_permissions

        DB::table('page_sections')->insert([
            [
                'name' => 'home-banner',
                'page_type_id' => '1',
                'title'=>'Banner video',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'true','heading'=>'true', 'mobile_file' => 'false', 'alternative_image' => 'false', 'mobile_alternative_file' => 'false']),
                'fields_name'=>json_encode(['heading'=>'Desktop Video Url','sub_heading'=>'Mobile Video Url','image'=>'Video','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Video', 'mobile_file' => 'Mobile Video', 'mobile_alternative_file' => 'Mobile Alternative Video',])


            ],
            [
                'name' => 'home-about',
                'page_type_id' => '1',
                'title'=>'About Us',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Short Description','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'our-projects',
                'page_type_id' => '1',
                'title'=>'Our Projects',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])



            ],
            [
                'name' => 'our-verticals',
                'page_type_id' => '1',
                'title'=>'Other verticals',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])



            ],
            [
                'name' => 'home-testimonial',
                'page_type_id' => '1',
                'title'=>'Our  Testimonial',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'home-media',
                'page_type_id' => '1',
                'title'=>' Our media coverage',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'fasle','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'home-blogs',
                'page_type_id' => '1',
                'title'=>'Blog',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'about-banner',
                'page_type_id' => '2', // about page
                'title'=>'Banner',
                'section_permissions'=>json_encode(['description'=>'fasle','image'=>'true','sub_heading'=>'fasle','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])
            ],
            [
                'name' => 'about-overview',
                'page_type_id' => '2', // about page
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'about-mission',
                'page_type_id' => '2', // about page
                'title'=>'mission',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'about-vision',
                'page_type_id' => '2', // about page
                'title'=>'vision',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'true','alternative_image' => 'true','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'about-team',
                'page_type_id' => '2', // about page
                'title'=>'Team',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'fasle','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'about-our-journey',
                'page_type_id' => '2', // about page
                'title'=>'Our Journey',
                'section_permissions'=>json_encode(['description'=>'fasle','image'=>'fsale','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'about-our-verticals',
                'page_type_id' => '2', // about page
                'title'=>'Our Verticals',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])


            ],
            [
                'name' => 'blogs-banner',
                'page_type_id' => '3', // blogs
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])


            ],
            [
                'name' => 'contact-banner',
                'page_type_id' => '4', // contact-us
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'contact-address',
                'page_type_id' => '4', // contact-us
                'title'=>'Address',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Corporate Address','sub_heading'=>'Noida Site Address','image'=>'Image','alt'=>'Alt text','description'=>'Iframe Url'])

            ],
            [
                'name' => 'contact-get-touch',
                'page_type_id' => '4', // contact-us
                'title'=>'Get In Touch',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Email','sub_heading'=>'Phone Number','image'=>'Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'career-banner',
                'page_type_id' => '5', // career
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'career-overview',
                'page_type_id' => '5', // work culture
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'career-work-culture',
                'page_type_id' => '5', // work culture
                'title'=>'work culture',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'career-work-values',
                'page_type_id' => '5', // work culture
                'title'=>'Work values',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'esg-banner',
                'page_type_id' => '6', // esg
                'title'=>'Banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'esg-overview',
                'page_type_id' => '6', // esg
                'title'=>'overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'esg-social',
                'page_type_id' => '6', // esg
                'title'=>'social',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'esg-environment-center',
                'page_type_id' => '6', // esg
                'title'=>'Environment Center',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Title','image'=>'Image','alt'=>'Alt text','description'=>'Short Description'])

            ],
            [
                'name' => 'esg-governance-center',
                'page_type_id' => '6', // esg governance
                'title'=>'Governance Center',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Title','image'=>'Image','alt'=>'Alt text','description'=>'Short Description'])

            ],
            [
                'name' => 'loan-banner',
                'page_type_id' => '7', // home loan
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'loan-overview',
                'page_type_id' => '7', // home loan
                'title'=>'overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Title','sub_heading'=>'short Description','image'=>'Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'tax-banner',
                'page_type_id' => '8', // tax benefits
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'tax-overview',
                'page_type_id' => '8', // tax benefits
                'title'=>'overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Short Description','image'=>'Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'area-converterbanner',
                'page_type_id' => '9', // area converter
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'investment-banner',
                'page_type_id' => '10', // propety investment
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'investment-overview',
                'page_type_id' => '10', // propety investment
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false', 'heading' => 'true' ]),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'nri-corner-banner',
                'page_type_id' => '11', // nri corner
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'nri-investor-banner',
                'page_type_id' => '12', // nri investor
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'nri-investor-overview',
                'page_type_id' => '12', // nri investor
                'title'=>'overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'faq-banner',
                'page_type_id' => '13', // faq
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'faq-overview',
                'page_type_id' => '13', // faq
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true','mobile_file' => 'false', 'alternative_image' => 'false', 'mobile_alternative_file' => 'false']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'emi-banner',
                'page_type_id' => '14', // EMI Calculator
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'blog-details',
                'page_type_id' => '15', // Blog Details
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'true','sub_heading'=>'true','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Section Heading','sub_heading'=>'Section Sub Heading','image'=>'Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'testimonials-banner',
                'page_type_id' => '16', // Testimonials
                'title'=>'banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'testimonials-overview',
                'page_type_id' => '16', // Testimonials
                'title'=>'overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'residential-banner',
                'page_type_id' => '17', // Residential
                'title'=>'Banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'residential-overview',
                'page_type_id' => '17', // Residential
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],[
                'name' => 'commercial-banner',
                'page_type_id' => '18', // Commercial
                'title'=>'Banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'commercial-overview',
                'page_type_id' => '18', // Commercial
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'commercial-sizes',
                'page_type_id' => '18', // Commercial
                'title'=>'Area',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Existing Area','sub_heading'=>'Expansion Area','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gallery-banner',
                'page_type_id' => '19', // gallery
                'title'=>'Banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'gallery-overview',
                'page_type_id' => '19', // gallery
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gallery-work-culture',
                'page_type_id' => '19', // gallery
                'title'=>'Culture Heading',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gallery-project-images',
                'page_type_id' => '19', // gallery
                'title'=>'Gallery Heading',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'media-banner',
                'page_type_id' => '20', // Media
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'media-overview',
                'page_type_id' => '20', // Media
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'media-center',
                'page_type_id' => '20', // Media
                'title'=>'Press Center',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-banner',
                'page_type_id' => '21', // Gvlip
                'title'=>'Banner',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true','sub_heading'=>'false','heading'=>'false','mobile_file' => 'true', 'alternative_image' => 'true', 'mobile_alternative_file' => 'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description', 'alternative_image' => 'Alternative Image', 'mobile_file' => 'Mobile Image', 'mobile_alternative_file' => 'Mobile Alternative Image',])

            ],
            [
                'name' => 'gvlip-intro',
                'page_type_id' => '21', // Gvlip
                'title'=>'Intro',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Logo', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-overview',
                'page_type_id' => '21', // Gvlip
                'title'=>'Overview',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-clients',
                'page_type_id' => '21', // Gvlip
                'title'=>'Clients',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-welcome',
                'page_type_id' => '21', // Gvlip
                'title'=>'Welcome Section',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Area','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-form',
                'page_type_id' => '21', // Gvlip
                'title'=>'Form',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-industries',
                'page_type_id' => '21', // Gvlip
                'title'=>'Industries',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-group',
                'page_type_id' => '21', // Gvlip
                'title'=>'GVR Group',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-approvals',
                'page_type_id' => '21', // Gvlip
                'title'=>'GVR Group',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Sub Heading','image'=>'Banner Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-committed',
                'page_type_id' => '21', // Gvlip
                'title'=>'Committed',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-faq',
                'page_type_id' => '21', // Gvlip
                'title'=>'FAQ',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Section Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-advantage',
                'page_type_id' => '21', // Gvlip
                'title'=>'Advantege Section',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Sub Heading','image'=>'Banner Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-deliver',
                'page_type_id' => '21', // Gvlip
                'title'=>'Deliver Section',
                'section_permissions'=>json_encode(['description'=>'true','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Sub Heading','image'=>'Banner Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-gallery',
                'page_type_id' => '21', // Gvlip
                'title'=>'Gallerys',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'false','sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Heading','sub_heading'=>'Sub Heading','image'=>'Banner Image','alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-certificate',
                'page_type_id' => '21', // Gvlip
                'title'=>'Certificate',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'false','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Points with Comma seprated','sub_heading'=>'Sub Heading','image'=>'Banner Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],
            [
                'name' => 'gvlip-location',
                'page_type_id' => '21', // Gvlip
                'title'=>'Location Meets',
                'section_permissions'=>json_encode(['description'=>'false','image'=>'true', 'alternative_image' => 'true', 'sub_heading'=>'true','heading'=>'true']),
                'fields_name'=>json_encode(['heading'=>'Iframe URL','sub_heading'=>'Sub Heading','image'=>'Banner Image', 'alternative_image' => 'Alternative Image', 'alt'=>'Alt text','description'=>'Description'])

            ],

        ]);
    }
}
